#
# $FreeBSD: ports/lang/otcl/Makefile,v 1.6 1999/11/28 18:31:28 steve Exp $
# $OpenBSD: Makefile,v 1.7 2000/04/18 07:10:46 angelos Exp $
#

DISTNAME=	otcl-1.0a4
CATEGORIES=	lang
NEED_VERSION=	1.230
MASTER_SITES=	http://www-mash.cs.berkeley.edu/dist/
HOMEPAGE=	ftp://ftp.tns.lcs.mit.edu/pub/otcl/README.html

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    tk83.1::x11/tk/8.3

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ARGS+=	--includedir=${PREFIX}/include/tcl8.3/generic \
		--with-tcl-ver=8.3

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FLAGS=	INST_OLIBSH='$${DESTDIR}${PREFIX}/lib'
FAKE_FLAGS=	${MAKE_FLAGS}
FAKE=		Yes

post-install:
	ln -sf libotcl.so.1 ${PREFIX}/lib/libotcl.so

.include <bsd.port.mk>
