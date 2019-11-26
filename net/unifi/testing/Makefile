# $OpenBSD: Makefile,v 1.31 2019/11/26 13:17:54 sthen Exp $

V=		5.12.42
SNAPPY_V=	1.1.7.2

# for stable-candidate and public beta versions
BUILD_V=	-1e9446c323

.if !defined(BUILD_V)
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= "If you have access to UniFi betas, open the beta blog post for $V"
FETCH_MANUALLY+= "and note the suffix from the directory name of the download URLs."
FETCH_MANUALLY+= "Then re-run make, passing it as BUILD_V. For example with a path"
FETCH_MANUALLY+= "with 1.0.0-xxxxxxxxxx, run 'make BUILD_V=xxxxxxxxxx'."
FETCH_MANUALLY+= ""
.endif

.include <bsd.port.mk>
