prawn_document({page_size: [144, 166], margin: [5, 15, 15, 5]}) do |pdf|
  def badge_label(size, top=0)
    {
      align: :center,
      at: [0, 135 - top],
      height: size,
      min_font_size: 10,
      overflow: :shrink_to_fit,
      size: size,
      width: 134,
    }
  end

  def badge_page(document, resource)
    document.text_box resource.first_name, badge_label(36)
    document.text_box resource.last_name, badge_label(24, 36)
    document.text_box resource.social_handle, badge_label(14, 85)
    document.text_box resource.other, badge_label(14, 125)
  end

  badge_page(pdf, resource)
  pdf.start_new_page
  badge_page(pdf, resource)
end
