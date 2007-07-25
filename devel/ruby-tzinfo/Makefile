# $OpenBSD: Makefile,v 1.1.1.1 2007/07/25 08:48:16 dlg Exp $

SHARED_ONLY=		Yes

COMMENT=		"Ruby timezone library"

VERSION=		0.3.3
DISTNAME=		tzinfo-${VERSION}
PKGNAME=		ruby-tzinfo-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://tzinfo.rubyforge.org/

# MIT/X Consortium
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://rubyforge.org/frs/download.php/15077/

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

NO_REGRESS=		Yes

.include <bsd.port.mk>
