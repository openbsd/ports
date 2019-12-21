# $OpenBSD: Makefile,v 1.32 2019/12/21 11:50:31 sthen Exp $

V=		5.12.46
SNAPPY_V=	1.1.7.2

# for stable-candidate and public beta versions
BUILD_V=	-d9f4b84b08

.if !defined(BUILD_V)
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= "If you have access to UniFi betas, open the beta blog post for $V"
FETCH_MANUALLY+= "and note the suffix from the directory name of the download URLs."
FETCH_MANUALLY+= "Then re-run make, passing it as BUILD_V. For example with a path"
FETCH_MANUALLY+= "with 1.0.0-xxxxxxxxxx, run 'make BUILD_V=xxxxxxxxxx'."
FETCH_MANUALLY+= ""
.endif

.include <bsd.port.mk>
