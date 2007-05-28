# $OpenBSD: Makefile,v 1.2 2007/05/28 20:05:29 jason Exp $

COMMENT=	"NEC2++ antenna simulator"

DISTNAME=	necpp-1.2.3
CATEGORIES=    	cad hamradio

HOMEPAGE=	http://www.physics.otago.ac.nz/research/electronics/nec/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Jason Wright <jason@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu

SHARED_LIBS=necpp 0.0

WANTLIB=c m stdc++
USE_LIBTOOL=Yes

post-install:
	$(INSTALL) -d -m 755 ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/36dip.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/Collinear_1L.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/GA487.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/Gs_8d_bb.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/K5332187.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/Yg_4x6_b.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/buoy.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/dipole_anim.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/discone.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/ek_test.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/example1.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/example2.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/example3.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/example4.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/example5.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/example6.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/ga_pjw_0.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/ga_pjw_1.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/gn2.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/helix.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/passive_test1.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/plane.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/plet_helix.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/plet_helixumts.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/sommerfeld2.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/sommerfield1.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/test299.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/yagi.nec ${PREFIX}/share/examples/necpp
	$(INSTALL) -c -m 644 ${WRKDIR}/${DISTNAME}/test_data/yagi16.nec ${PREFIX}/share/examples/necpp

.include <bsd.port.mk>
