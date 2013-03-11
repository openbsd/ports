# $OpenBSD: Makefile,v 1.32 2013/03/11 11:10:55 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	generate and manipulate images

DISTNAME=	Imager-0.84
REVISION=	0
CATEGORIES=	graphics
MODULES=	cpan

HOMEPAGE=	http://imager.perl.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c freetype gif jpeg m png tiff z

LIB_DEPENDS=	graphics/png \
		graphics/jpeg \
		graphics/tiff \
		graphics/libungif

CONFIGURE_ARGS=	--enable jpeg,tiff,png,ungif,T1-fonts,freetype2 \
		--incpath="${LOCALBASE}/include:${X11BASE}/include" \
		--libpath="${LOCALBASE}/lib:${X11BASE}/lib"
USE_GMAKE=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
