#
# $FreeBSD: ports/lang/otcl/Makefile,v 1.6 1999/11/28 18:31:28 steve Exp $
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/06 02:18:23 angelos Exp $
#

DISTNAME=	otcl-1.0a4
CATEGORIES=	lang
MASTER_SITES=	http://www-mash.cs.berkeley.edu/dist/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    tk82.1:${PORTSDIR}/x11/tk82

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--includedir=${PREFIX}/include/tcl8.2/generic \
		--with-tcl-ver=8.2

post-install:
	${LN} -sf libotcl.so.1 ${PREFIX}/lib/libotcl.so
	${SETENV} ${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
