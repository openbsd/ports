#
# $FreeBSD: ports/lang/otcl/Makefile,v 1.6 1999/11/28 18:31:28 steve Exp $
# $OpenBSD: Makefile,v 1.11 2000/10/22 14:03:22 espie Exp $
#

DISTNAME=	otcl-1.0a5
CATEGORIES=	lang
NEED_VERSION=	1.314
MASTER_SITES=	http://www-mash.cs.berkeley.edu/dist/
HOMEPAGE=	ftp://ftp.tns.lcs.mit.edu/pub/otcl/README.html

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    tk83.1::x11/tk/8.3

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=--includedir=${PREFIX}/include/tcl8.3/generic \
		--with-tcl-ver=8.3 \
		--with-tk-ver=8.3

.include <bsd.port.mk>
