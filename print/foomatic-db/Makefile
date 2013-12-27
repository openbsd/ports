# $OpenBSD: Makefile,v 1.35 2013/12/27 13:32:35 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		Foomatic PPD data

V=			20131001
DISTNAME=		foomatic-db-4.0-${V}
PKGNAME=		foomatic-db-4.0.${V}

CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - MIT
PERMIT_PACKAGE_CDROM=	Yes

# tarballs are only available for a 24 hour period
#MASTER_SITES=		http://www.openprinting.org/download/foomatic/
#MASTER_SITES=		https://distfiles.bsdfrog.org/
MASTER_SITES=		https://bsdistfiles.googlecode.com/files/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-ppds-to-cups

WRKDIST=		${WRKDIR}/foomatic-db-${V}

NO_BUILD=		Yes
NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure
	rm ${WRKSRC}/db/source/printer/KONICA_MINOLTA-magicolor_2430_DL.xml

# From Fedora ; these files are already shipped by the foo2zjs package
# RH #208851 #438319 #518267
.for x in zjs oak-z1 oak hp qpdl lava kyo xqx slx hiperc hbpl2 zjs-z1 zjs-z2 zjs-z3
	find ${WRKSRC}/db/source/printer -name '*.xml' | xargs grep -l "<driver>foo2${x}" | xargs -r rm
	rm -f ${WRKSRC}/db/source/driver/foo2${x}.xml \
		${WRKSRC}/db/source/opt/foo2${x}-*
.endfor
.for i in Xerox-Phaser_6110 Samsung-CLP-300 Samsung-CLP-310 Samsung-CLP-315 \
	Samsung-CLP-610 Samsung-CLP-620
	mv ${WRKSRC}/db/source/printer/${i}.xml \
		${WRKSRC}/db/source/printer/${i}-splix.xml
.endfor
# files already shipped by the ptouch-driver package
	rm -f ${WRKSRC}/db/source/printer/Brother-{PT,QL}*.xml
	rm -f ${WRKSRC}/db/source/driver/ptouch.xml

.include <bsd.port.mk>
