# $OpenBSD: Makefile,v 1.39 2020/06/21 12:18:39 sthen Exp $

V=		5.13.32
SNAPPY_V=	1.1.7.3

# for stable-candidate and public beta versions
BUILD_V=	3e11950f9b

.if !defined(BUILD_V)
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= "If you have access to UniFi betas, open the beta blog post for $V"
FETCH_MANUALLY+= "and note the suffix from the directory name of the download URLs."
FETCH_MANUALLY+= "Then re-run make, passing it as BUILD_V. For example if the path"
FETCH_MANUALLY+= "is $V-xxxxxxxxxx, run 'make BUILD_V=xxxxxxxxxx'."
FETCH_MANUALLY+= ""
.endif

.include <bsd.port.mk>
