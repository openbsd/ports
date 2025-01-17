COMMENT =		Perl interface to Tcl interpreters

DISTNAME =		Tcl-1.50

CATEGORIES =		devel lang
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

CONFIGURE_ARGS +=	--tclconfig=${MODTCL_LIBDIR}/tclConfig.sh \
			--tclsh=${MODTCL_BIN}

.include <bsd.port.mk>
