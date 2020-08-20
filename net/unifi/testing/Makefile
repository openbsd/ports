# $OpenBSD: Makefile,v 1.45 2020/08/20 10:17:41 sthen Exp $

V=		6.0.13
SNAPPY_V=	1.1.7.5

# for stable-candidate and public beta versions
BUILD_V=	49f6654778

.if !defined(BUILD_V)
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= "If you have access to UniFi betas, open the beta blog post for $V"
FETCH_MANUALLY+= "and note the suffix from the directory name of the download URLs."
FETCH_MANUALLY+= "Then re-run make, passing it as BUILD_V. For example if the path"
FETCH_MANUALLY+= "is $V-xxxxxxxxxx, run 'make BUILD_V=xxxxxxxxxx'."
FETCH_MANUALLY+= ""
.endif

.include <bsd.port.mk>
