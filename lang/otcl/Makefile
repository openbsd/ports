#
# $FreeBSD: ports/lang/otcl/Makefile,v 1.6 1999/11/28 18:31:28 steve Exp $
# $OpenBSD: Makefile,v 1.4 2000/03/24 23:28:14 espie Exp $
#

DISTNAME=	otcl-1.0a4
CATEGORIES=	lang
NEED_VERSION=	 1.230
MASTER_SITES=	http://www-mash.cs.berkeley.edu/dist/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    tk82.1::x11/tk82

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--includedir=${PREFIX}/include/tcl8.2/generic \
		--with-tcl-ver=8.2

post-install:
	ln -sf libotcl.so.1 ${PREFIX}/lib/libotcl.so
	${SETENV} ${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
