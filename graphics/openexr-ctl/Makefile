# $OpenBSD: Makefile,v 1.4 2010/11/17 08:05:15 espie Exp $

COMMENT =		OpenEXR bindings for CTL
DISTNAME =		openexr_ctl-1.0.1

PKGNAME =		${DISTNAME:S/_/-/}

SHARED_LIBS +=  IlmImfCtl            0.0      # .2.0

CATEGORIES =		graphics
HOMEPAGE =		http://www.oscars.org/science-technology/council/projects/ctl.html

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += Half Iex IlmThread Imath c m pthread stdc++ z 
WANTLIB += IlmImf IlmCtl IlmCtlMath IlmCtlSimd

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ampasctl/}

LIB_DEPENDS =		graphics/openexr \
			graphics/ctl

SEPARATE_BUILD =	concurrent

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
# Running the configure test makes mips64 rather unhappy.
CONFIGURE_ARGS +=	--disable-openexrtest

.include <bsd.port.mk>
