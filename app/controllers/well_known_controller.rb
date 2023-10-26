class WellKnownController < ApplicationController
  def nostr
    if params[:name].present?
      @verifications = Verification.where(name: params[:name])
    else
      @verifications = Verification.all
    end

    render 'well_known/nostr', content_type: 'application/json'
  end
end
