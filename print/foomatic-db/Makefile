# $OpenBSD: Makefile,v 1.9 2010/07/31 08:17:46 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		Foomatic PPD data

V=			20091207
DISTNAME=		foomatic-db-4.0-${V}
PKGNAME=		foomatic-db-4.0.${V}
REVISION=		1
CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# tarballs are only available for a 24 hour period
#MASTER_SITES=		http://www.openprinting.org/download/foomatic/
MASTER_SITES=		http://www.bsdfrog.org/OpenBSD/distfiles/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-ppds-to-cups

RUN_DEPENDS=		::print/foomatic-db-engine

WRKDIST=		${WRKDIR}/foomatic-db-${V}

NO_BUILD=		Yes
NO_REGRESS=		Yes

pre-configure:
	perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/configure

# From Fedora ; these files are already shipped by the foo2zjs package
# RH #208851 #438319 #518267
.for x in zjs oak-z1 oak hp qpdl lava kyo xqx slx hiperc
	find ${WRKSRC}/db/source/printer -name '*.xml' | xargs grep -l "<driver>foo2${x}" | xargs rm
	rm -f ${WRKSRC}/db/source/driver/foo2${x}.xml \
		${WRKSRC}/db/source/opt/foo2${x}-*
.endfor
	mv ${WRKSRC}/db/source/printer/Xerox-Phaser_6110.xml \
		${WRKSRC}/db/source/printer/Xerox-Phaser_6110-splix.xml

.include <bsd.port.mk>
