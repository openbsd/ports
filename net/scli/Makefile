# $OpenBSD: Makefile,v 1.1.1.1 2002/09/12 06:20:32 pvalchev Exp $

COMMENT=		"snmp command line utility"
VERSION=		0.2.12
DISTNAME=		scli-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.ibr.cs.tu-bs.de/projects/scli/

MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/pub/local/scli/	

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		glib.1.2,gmodule.1.2::devel/glib \
			xml2::textproc/libxml \
			iconv::converters/libiconv

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
