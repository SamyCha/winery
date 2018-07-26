class HostReview < Review
    belongs_to :host, class_name: "user"

end
