# $OpenBSD: Makefile,v 1.9 2001/09/08 10:06:41 jakob Exp $

COMES_WITH=	3.0

COMMENT=	a Kerberos 5 implementation

DISTNAME=	heimdal-0.4e
CATEGORIES=    	security
NEED_VERSION=	1.405

HOMEPAGE=	http://www.pdc.kth.se/heimdal/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.pdc.kth.se/pub/heimdal/src/

PREFIX=			${LOCALBASE}/heimdal

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var/heimdal \
		        --with-krb4-lib=/usr/lib \
			--with-krb4-include=/usr/include/kerberosIV \
			${CONFIGURE_SHARED}

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
USE_X11=		Yes
CONFIGURE_ARGS+=	--with-x \
			--x-includes=${X11BASE}/include \
			--x-libraries=${X11BASE}/lib
.endif

.include <bsd.port.mk>
