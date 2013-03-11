# $OpenBSD: Makefile,v 1.7 2013/03/11 11:10:54 espie Exp $

COMMENT =		OpenEXR bindings for CTL
DISTNAME =		openexr_ctl-1.0.1
REVISION=		0

PKGNAME =		${DISTNAME:S/_/-/}

SHARED_LIBS +=  IlmImfCtl            0.0      # .2.0

CATEGORIES =		graphics
HOMEPAGE =		http://www.oscars.org/science-technology/council/projects/ctl.html

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Half Iex IlmThread Imath c m pthread stdc++ z 
WANTLIB += IlmImf IlmCtl IlmCtlMath IlmCtlSimd

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ampasctl/}

LIB_DEPENDS =		graphics/openexr \
			graphics/ctl

SEPARATE_BUILD =	Yes

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
# Running the configure test makes mips64 rather unhappy.
CONFIGURE_ARGS +=	--disable-openexrtest

.include <bsd.port.mk>
