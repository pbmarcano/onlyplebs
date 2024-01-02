class WellKnownController < ApplicationController
  def nostr
    if params[:name].present?
      @internet_ids = InternetIdentity.where(name: params[:name])
    else
      @internet_ids = InternetIdentity.all
    end

    render 'well_known/nostr', content_type: 'application/json'
  end
end
