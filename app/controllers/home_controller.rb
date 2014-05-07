class HomeController < ApplicationController
  def create_contact
    challenge = params[:recaptcha_challenge_field]
    captcha_response = params[:recaptcha_response_field].delete(' ')
    remoteip = request.remote_ip
    
    captcha_result = HTTParty.post("http://www.google.com/recaptcha/api/verify",
      :body => { "privatekey" => "6LeUGPMSAAAAAF1Kllf_ys_DdpDjMXlXiCkKGnLH",
        "challenge" => challenge, "response" => captcha_response, "remoteip" => remoteip})
    if captcha_result.body && captcha_result.body.start_with?("true")
      interests = ""
      if params[:interests_free] == "1"
        interests = 'Free consultation before listing. '
      end
    
      if params[:interests_cma] == "1"
        interests = interests + 'CMA of my home. '
      end

      if params[:interests_list] == "1"
        interests = interests + 'Working with an Agent to list my home. '
      end
    
      if params['features']
        features = params['features'].join(',')
      end
      ContactRequest.create!(email: params['email'], comments: params['comments'], firstName: params['firstName'],
        lastName: params['lastName'], phoneArea: params['phoneArea'], phoneLocal: params['phoneLocal'], phoneNumber: params['phoneNumber'],
        bestTimeReach: params['bestTimeReach'], contactType: params['contactType'], squareFeet: params['squareFeet'],
        bedrooms: params['bedrooms'], bathrooms: params['bathrooms'], address: params['address'], street: params['street'],
        unitOrSuite: params['unitOrSuite'], city: params['city'], state: params['state'], postalCode: params['postalCode'],
        county: params['county'], area: params['area'], interests: interests, features: features)
      @message = "Thank you for contacting me! I will be in touch with you shortly."
      render layout: "seller"
    else
      Rails.logger.info "Captchar result: #{captcha_result.body}"
      @message = "Please use valid CAPTCHA text in the bottom of contact form."
      render layout: "seller"
    end
  end

  def index
  end

  def search
  end

  def SearchMass
  end

  def OurOffering
  end

  def evaluation
  end

  # buyer pages
  def buyer
  end

  def ThisMonth
  end

  def BuyerSteps
  end
  
  def DecideHowMuch
  end

  def CreateWishList
  end

  def Location
  end

  def Option
  end
  
  def RealtorHelp
  end
  
  def EightQuestions
  end
  
  def Mortgage
  end

  def BuyerFormGetAction
  end

  # seller pages
  def seller
    render layout: 'seller'
  end

  def EightStepsSell
    render layout: 'seller'
  end

  def SellerQuestions
    render layout: 'seller'
  end

  def SellerHowPrice
    render layout: 'seller'
  end

  def SellerGoodEtiquette
    render layout: 'seller'
  end

  def SellerUnderstand
    render layout: 'seller'
  end

  def SellerIncreaseAppeal
    render layout: 'seller'
  end

  def SellerFormGetAction
    render layout: 'seller'
  end

  def SchoolMatters
    render layout: 'seller'
  end

  def FindBestSchools
    render layout: 'seller'
  end

  def Neighborhood
    render layout: 'seller'
  end

  def AreaLinks
    render layout: 'seller'
  end

  def reloation
    render layout: 'seller'
  end

  def ContactMe
    render layout: 'seller'
  end

  def FreeHousingTrend
    render layout: 'seller'
  end

  def testimonials
    render layout: 'seller'
  end

  def AboutPaul
    render layout: 'seller'
  end

  def ThePaulHuangTeam
    render layout: 'seller'
  end

  # Mortgage rates gadgat
  def rates
  end
end