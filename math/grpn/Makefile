# $OpenBSD: Makefile,v 1.6 2002/09/03 08:30:49 mark Exp $

COMMENT=	"graphical reverse polish notation calculator"

DISTNAME=	grpn-1.1.1
CATEGORIES=	math x11

MAINTAINER=	Mark Grimes <mark@openbsd.org>

MASTER_SITES=	http://lashwhip.com/grpn/

HOMEPAGE=	http://lashwhip.com/grpn.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/grpn ${PREFIX}/bin

.include <bsd.port.mk>
