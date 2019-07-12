# $OpenBSD: Makefile,v 1.30 2019/07/12 20:43:38 sthen Exp $

COMMENT=		module for communicating with MPD servers
DISTNAME=		Audio-MPD-2.004
CATEGORIES=		audio

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	examples

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		audio/p5-Audio-MPD-Common>=2.003 \
			devel/p5-Getopt-Euclid \
			devel/p5-List-AllUtils \
			devel/p5-List-MoreUtils \
			devel/p5-Moose \
			devel/p5-MooseX-Has-Sugar \
			devel/p5-MooseX-SemiAffordanceAccessor \
			devel/p5-Proc-Daemon

TEST_DEPENDS=		devel/p5-Test-Corpus-Audio-MPD>=1.113282

# Tests would fail if set
MAKE_ENV +=		MPD_HOST= MPD_PORT=

# Tests need to find mpd.
pre-test:
	@ln -sf ${LOCALBASE}/sbin/mpd ${WRKDIR}/bin/mpd

.include <bsd.port.mk>
