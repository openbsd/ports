# $OpenBSD: Makefile,v 1.1.1.1 2009/09/23 20:30:55 jasper Exp $

COMMENT=	interface to the Skein digest algorithm

HOMEPAGE=	http://www.skein-hash.info/

MODULES=	cpan
DISTNAME=	Digest-Skein-0.03
CATEGORIES=	security

MAINTAINER=	Stephan A. Rickauer <stephan.rickauer@startek.ch>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BYTEORDER!=sysctl -n hw.byteorder

.if ${BYTEORDER} == "1234"
BO=	LITTLE
.else
BO=	BIG
.endif

pre-configure:
	@perl -pi -e 's,!!ENDIAN!!,IS_${BO}_ENDIAN,g' \
		${WRKSRC}/Optimized_64bit/brg_endian.h

.include <bsd.port.mk>
