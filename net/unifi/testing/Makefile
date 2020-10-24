# $OpenBSD: Makefile,v 1.54 2020/10/24 10:53:48 sthen Exp $

V=		6.0.28
SNAPPY_V=	1.1.7.5

# for stable-candidate and public beta versions
BUILD_V=	39f3b98a31

.if !defined(BUILD_V)
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= "If you have access to UniFi betas, open the beta blog post for $V"
FETCH_MANUALLY+= "and copy one of the download URLs. Then re-run make, passing the"
FETCH_MANUALLY+= "full URL or just the version suffix as BUILD_V. For example, with URL"
FETCH_MANUALLY+= "https://dl.ui.com/unifi/$V-XXX/UniFi-unix.zip, you can run"
FETCH_MANUALLY+= "'make BUILD_V=https://dl.ui.com/unifi/$V-XXX/UniFi-unix.zip'."
FETCH_MANUALLY+= ""
.endif

.include <bsd.port.mk>
