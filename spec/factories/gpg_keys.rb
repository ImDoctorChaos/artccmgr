# frozen_string_literal: true

FactoryGirl.define do
  factory :gpg_key do
    association :user

    key do
      <<-END
      -----BEGIN PGP PUBLIC KEY BLOCK-----
      Version: GnuPG v1.4.11 (Darwin)

      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
      VxCd5t3Exzi+3ZOOTJnECMABZc6lK7rIOiQHHLW6vHIy5MggT/Dz6NuQuT9ID2uO
      wzx6w9XMdRXJ0uuEJlhTZtcjlKu+B8i9hHgj1zqNT67Zkkz0/YTVHtNYDpOzjc7A
      c+m/Qok/ERUjVcYS6dIJnJU+3V4L5APTAAMFC/sHCYUR5oa/uCktq//r09xRc/bu
      4uuzNJvsLzHcUA4udFSq2AneqrH/HCkrE0G4U79GMVpSddb+IamNWgJwfk4YHfNV
      Vx2NhAWoCAIve0q+ueXGTGKkHyb0QobT/AmM/4Mtuln7cUfrkEmI8N8YIwPDqCGz
      rWxvoPaOSUSxNfkyrV6IX8vjotx3NKm9n/6f5l/ncDrNSNruSywMq0fiLYS1+bCb
      jsrTfWJKcM284ZwazKgcuhcCkXombkNQtQv7uD8FveWNVhC+LXtsyLGrzFNJVbNr
      khKYfUFyoMY50PdvF4Ai1uJ0IYXQvIPnHbxPXMWa5PezrTWzlIXaVvVfgypC/tCY
      p1QgiS+ln60NoK1m2ZFrUO3rklM44L1BNO9qjrUjYFVlmRd+qEBoXWGJLFp1g7Nh
      1mijiKdrwmCzWsnRSmPRYtOujeojP8bH4ca9RekwqLbRVeX/dLi02GD0pOp6SI6B
      Bk3J0Wzp2Ko47Vj8v03hdBozKZT93a4NeyrNZdiIYQQYEQgACQUCTW05ZgIbDAAK
      CRDLUpBCN9v3ISGmAP0VXwY7BH81NRpwAYp/eeSGP1vxBCdqVAHMc4o3TUoWHAEA
      vioivJ/Qvnb7nlHwagl5rLNXhiz/H71jmFS9x0x7FLg=
      =T/Ce
      -----END PGP PUBLIC KEY BLOCK-----
      END
    end

    trait :invalid do
      user { nil }
      key  { nil }
    end
  end
end
