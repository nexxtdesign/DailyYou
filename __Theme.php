<?php

namespace Shopware\Themes\DailyYou;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme
{
     /**
     * Javascript files which will be used in the theme.
     *
     * @var array
     */
    protected $javascript = [
  
        'src/aos/aos.js',
        'src/js/custom.js',
        'src/js/backtop.js',
        

    ];
 
    protected $css = array(
    'src/aos/aos.css'
);
    
    protected $extend = 'Responsive';

    protected $name = 'DY Theme';

    /** @var string Description of the theme */
    protected $description = 'DAILY YOU CUSTOM THEME';

    /** @var string The author of the theme */
    protected $author = 'Amir Fayaz';

    /** @var string License of the theme */
    protected $license = 'MIT';

    //protected $injectBeforePlugins = true;

    //protected $inheritanceConfig = true;    

    public function createConfig(Form\Container\TabContainer $container)
    {
    }
}