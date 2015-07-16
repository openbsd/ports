# $OpenBSD: Makefile,v 1.10 2015/07/16 23:57:27 ajacoutot Exp $

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
