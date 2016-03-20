# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:01 naddy Exp $

COMMENT =	interface to the Skein digest algorithm

DISTNAME =	Digest-Skein-0.05
CATEGORIES =	security

REVISION =	3

HOMEPAGE =	http://www.skein-hash.info/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =	cpan
PKG_ARCH =	*

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mle}
BO=	LITTLE
.else
BO=	BIG
.endif

pre-configure:
	@perl -pi -e 's,!!ENDIAN!!,IS_${BO}_ENDIAN,g' \
		${WRKSRC}/Optimized_64bit/brg_endian.h

.include <bsd.port.mk>
