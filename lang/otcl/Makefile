#
# $FreeBSD: ports/lang/otcl/Makefile,v 1.6 1999/11/28 18:31:28 steve Exp $
# $OpenBSD: Makefile,v 1.14 2002/10/27 14:12:48 naddy Exp $
#

COMMENT=	"MIT Object Tcl"

DISTNAME=	otcl-1.0a7
CATEGORIES=	lang

HOMEPAGE=	http://www.isi.edu/nsnam/otcl/index.html

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.isi.edu/nsnam/dist/

LIB_DEPENDS=    tk83.1::x11/tk/8.3

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+=--includedir=${PREFIX}/include/tcl8.3/generic \
		--with-tcl-ver=8.3 \
		--with-tk-ver=8.3

NO_REGRESS=	Yes

.include <bsd.port.mk>
