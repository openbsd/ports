# $OpenBSD: Makefile,v 1.17 2019/07/12 20:43:38 sthen Exp $

COMMENT=		complete MPD client library

DISTNAME=		POE-Component-Client-MPD-2.001
CATEGORIES=		audio

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	examples

RUN_DEPENDS=		audio/p5-Audio-MPD-Common \
			devel/p5-List-AllUtils \
			devel/p5-Moose>=0.92 \
			devel/p5-MooseX-Has-Sugar \
			devel/p5-MooseX-POE \
			devel/p5-MooseX-SemiAffordanceAccessor \
			devel/p5-MooseX-Types \
			devel/p5-POE \
			devel/p5-Readonly \
			devel/p5-Sub-Exporter \
			devel/p5-Test-Corpus-Audio-MPD>=1.120990

PORTHOME=		${WRKDIR}

# It would require Pod::Coverage::TrustPod that we don't ship
TEST_ENV +=		AUTHOR_TESTING=

CONFIGURE_STYLE=	modbuild

# Tests need to find mpd.
pre-test:
	@ln -sf ${LOCALBASE}/sbin/mpd ${WRKDIR}/bin/mpd

.include <bsd.port.mk>
