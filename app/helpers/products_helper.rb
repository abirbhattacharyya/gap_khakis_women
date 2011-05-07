module ProductsHelper
  def show_description (product_id)
      response ="missing"
     case product_id
     when 1
       response = "<h5>fabric & care</h5>
<ul class='list'>
  <li>100% Polyester.</li>
<li>Dry clean.</li>
<li>Imported.</li>
</ul>
<h5 >overview</h5>
<ul class='list'>
<li>Sheer.</li>
<li>Long sleeves with dropped shoulder seams and single-button cuffs.</li>
<li>Collar.</li>
<li>Button down henley placket.</li>
<li>Patch pockets with flap closures.</li>
<li>Side slits.</li>
</ul>
<h5 class='list'>fit & sizing</h5>
<ul class='list'>
<li>Oversized, relaxed fit.</li>
<li>Hits below the hips.</li></ul>"

     when 2

      response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>100% Polyester.</li>
            <li>Machine wash.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>Strapless.</li>
            <li>Asymmetrical gathers along straight neckline.</li>
            <li>Blouson bodice with long drawstring ties at waist.</li>
            <li>Elasticized band in back.</li>
            <li>Fully lined.</li>
            <li>Petite Fit Guide</li>
            <li>Tall Fit Guide</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>Hits at the ankles.</li>
          </ul>"
     
    when 3

      response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>100% Polyester.</li>
            <li>Dry clean.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
             <li>Sleeveless. </li>
             <li>Loops at one side, tie at v-neckline. </li>
             <li>Pleated front. </li>
            <li>Petite Fit Guide</li>
            <li>Tall Fit Guide</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>Hits at the hips.</li>
          </ul>"
     when 4
       response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>87% Polyethylene, 13% Polyester.</li>
            <li>Wipe clean.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>Sequin straps.</li>
            <li>End pockets.</li>
            <li>Interior zip pocket.</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>What can fit inside? Toiletries, magazines and books, compact umbrella.</li>
            <li>13 1/2\" (L) x 7\" (H) x 12 1/2\" (W).</li>
          </ul>"
     when 5
       response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>70% Cotton, 20% Nylon, 10% Silk.</li>
            <li>Machine wash.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>Short sleeves.</li>
            <li>Open front.</li>
            <li>Drawstring ties at waist.</li>
            <li>Finely ribbed trim throughout.</li>
            <li>Petite Fit Guide</li>
            <li>Loose, relaxed fit.</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>Hits mid-thigh.</li>
          </ul>"
     when 6
       response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>95% Rayon, 5% Spandex.</li>
            <li>Machine wash.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>Spaghetti straps meet in back.</li>
            <li>Deep V-neckline.</li>
            <li>Shirred detailing along bodice edges.</li>
            <li>Elasticized waist.</li>
            <li>Allover stripes.</li>
            <li>Petite Fit Guide</li>
            <li>Tall Fit Guide</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>Relaxed, easy fit.</li>
            <li>Hits at the ankles.</li>
          </ul>"
     when 7
       response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>100% Cotton.</li>
            <li>Machine wash.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>Button at center front, zip fly.</li>
            <li>Slant pockets at front, welt pockets at back.</li>
            <li>Designed for cuffs to be rolled up or down.</li>
            <li>Petite Fit Guide</li>
            <li>Tall Fit Guide</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>Sits at the waist.</li>
            <li>Relaxed fit.</li>
            <li>Hits mid-thigh.</li>
            <li>Inseams (unrolled): regular: 10\", tall: 11\", petite: 9\"</li>
          </ul>"
     when 8
       response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>100% Cotton.</li>
            <li>Machine wash.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>Button at center front, zip fly.</li>
            <li>Slant pockets at front, welt pockets at back.</li>
            <li>Designed for cuffs to be rolled up or down.</li>
            <li>Petite Fit Guide</li>
            <li>Tall Fit Guide</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>Sits at the waist.</li>
            <li>Relaxed fit.</li>
            <li>Hits mid-thigh.</li>
            <li>Inseams (unrolled): regular: 10\", tall: 11\", petite: 9\"</li>
          </ul>"
     when 9
       response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>100% Rayon.</li>
            <li>Machine wash.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>  Soft ribbed knit.</li>
            <li>Long sleeves.</li>
            <li>V-neckline.</li>
            <li>Button down placket.</li>
            <li>Front welt pockets.</li>
            <li>Petite Fit Guide</li>
            <li>Tall Fit Guide</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>Hits below the hips.</li>
          </ul>"
     when 10
       response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>100% Cotton.</li>
            <li>Machine wash.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>Spagetti straps.</li>
            <li>Deep scoop neck with shirred detailing.</li>
            <li>Front button placket.</li>
            <li>Curved ruffle hem.</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>Blousy fit.</li>
            <li>Hits below the hips.</li>
          </ul>"
     when 11
       response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>63% Cotton, 37% Nylon.</li>
            <li>Machine wash.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>Long sleeves.</li>
            <li>Open front.</li>
            <li>Contrast knit detailing.</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>Hits at the hips</li>
          </ul>"
     when 12
       response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>100% Cotton.</li>
            <li>Spot clean.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>Bobble tassels at ends.</li>
            <li>Allover bleeding stripes.</li>
          </ul>"
       when 14
       response = "<h5>fabric & care</h5>
          <ul class='list'>
            <li>60% Cotton, 40% Polyester.</li>
            <li>Machine wash.</li>
            <li>Imported.</li>
          </ul>
          <h5 >overview</h5>
          <ul class='list'>
            <li>Hand-sprayed dye technique gives each tee a unique, vintage look.</li>
            <li>Cap sleeves.</li>
            <li>U-neck.</li>
            <li>Bleached out trim along neckline and hem.</li>
            <li>Petite Fit Guide</li>
            <li>Tall Fit Guide</li>
          </ul>
          <h5 class='list'>fit & sizing</h5>
          <ul class='list'>
            <li>Hits at the hips.</li>
          </ul>"
     end
     return response

   end

end
