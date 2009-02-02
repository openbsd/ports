# $OpenBSD: Makefile,v 1.1.1.1 2009/02/02 22:59:23 simon Exp $

COMMENT =	Perl extension to the X On Screen Display library (xosd)
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	X-Osd-0.7
CATEGORIES =	x11

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

LIB_DEPENDS =	xosd::x11/xosd

USE_X11 =	Yes
XAUTHORITY ?=	${HOME}/.Xauthority

REGRESS_IS_INTERACTIVE =	x11
REGRESS_FLAGS =			DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

pre-regress:
.if !exists(${XAUTHORITY})
	@echo 1>&2 "The regression tests require a running instance of X."
	@echo 1>&2 "You will also need to set the XAUTHORITY environment"
	@echo 1>&2 "variable to point to the appropriate .Xauthority file."
	@exit 1
.endif

.include <bsd.port.mk>
