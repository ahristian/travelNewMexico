<?php get_header();

while (have_posts()) {
    the_post(); ?>
    <div class="page-banner">
        <div class="page-banner__bg-image" style="background-image:
                url(<?php $pageBannerImage = get_field('page_banner_background_image');
                echo $pageBannerImage['sizes']['pageBanner']; ?>;"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title">
                <?php echo the_title(); ?>
            </h1>
            <div class="page-banner__intro">
                <?php echo the_field('page_banner_subtitle'); ?>
            </div>
        </div>
    </div>
    <div class="container container--narrow page-section">
        <div class="metabox metabox--position-up metabox--with-home-link">
            <p><a class="metabox__blog-home-link"
                  href="<?php echo get_post_type_archive_link('destination') ?>">
                    <i class="fa fa-home" aria-hidden="true">
                    </i>Destinations
                </a> <span class="metabox__main">
                    <?php the_title() ?>
                </span></p>
        </div>
        <div class="generic-content">
            <div class="row group">
                <div class="one-half">
                    <?php the_post_thumbnail('destinationSinglePage'); ?>
                </div>
                <div class="one-half">
                    <?php the_content(); ?>
                </div>

            </div>

        </div>

        <?php
        $relatedThingsToDo = new WP_Query(array(
                'posts_per_page' => -1,
                'post_type' => 'thing',
                'orderby' => 'title',
                'order' => 'ASC',
                'meta_query' => array(
                    array(
                        'key' => 'related_destination',
                        'compare' => 'Like',
                        'value' => '"' . get_the_ID() . '"'
                    )
                )
            )
        );
        if ($relatedThingsToDo->have_posts()) {
            echo '
<hr class="section-break"> 
<h2 class="headline headline--medium"> Thing(s) to do at ' . get_the_title() . ' </h2>';

        }
        while ($relatedThingsToDo->have_posts()) {
            $relatedThingsToDo->the_post();
            ?>
            <li><a href="<?php the_permalink(); ?>"><?php the_title() ?>
                </a></li>
            <?php
        }
        wp_reset_postdata();

        $today = date('Ymd');
        $homePageEvents = new WP_Query(array(
                'posts_per_page' => -1,
                'post_type' => 'events',
                'orderby' => 'meta_value_num',
                'meta_key' => 'event_date',
                'order' => 'ASC',
                'meta_query' => array(
                    array(
                        'key' => 'event_date',
                        'compare' => '>=',
                        'value' => $today,
                        'type' => 'numeric'
                    ),
                    array(
                        'key' => 'related_destination',
                        'compare' => 'Like',
                        'value' => '"' . get_the_ID() . '"'
                    )
                )
            )
        );
        if ($homePageEvents->have_posts()) {
            echo '
<hr class="section-break"> 
<h2 class="headline headline--medium"> Upcoming Events at ' . get_the_title() . ' </h2>';

        }
        while ($homePageEvents->have_posts()) {
            $homePageEvents->the_post();
            ?>
            <div class="event-summary">
                <a class="event-summary__date t-center" href=" <?php the_permalink(); ?>">
                    <span class="event-summary__month">
                        <?php
                        $eventDate = new DateTime(get_field('event_date'));
                        echo $eventDate->format('M');
                        ?>
                    </span>
                    <span class="event-summary__day">
                         <?php
                         echo $eventDate->format('d'); ?>
                    </span>
                </a>
                <div class="event-summary__content">
                    <h5 class="event-summary__title headline headline--tiny">
                        <a href="<?php the_permalink(); ?>">
                            <?php echo the_title(); ?>
                        </a>
                    </h5>
                    <p> <?php if (has_excerpt()) {
                            echo get_the_excerpt();
                        } else {
                            echo wp_trim_words(get_the_content(), 18);
                        } ?>
                        <a href=" <?php the_permalink(); ?>" class="nu gray">
                            Learn more</a>
                    </p>
                </div>
            </div>
            <?php
        }
        ?>
    </div>
    <?php
    get_footer();
}

?>


