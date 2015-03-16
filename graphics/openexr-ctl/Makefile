# $OpenBSD: Makefile,v 1.9 2015/03/16 18:07:48 naddy Exp $

COMMENT =		OpenEXR bindings for CTL
DISTNAME =		openexr_ctl-1.0.1
REVISION=		1

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

CONFIGURE_STYLE =	gnu
# Running the configure test makes mips64 rather unhappy.
CONFIGURE_ARGS +=	--disable-openexrtest

.include <bsd.port.mk>
