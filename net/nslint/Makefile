# $OpenBSD: Makefile,v 1.2 2001/05/06 05:00:15 lebel Exp $
# $FreeBSD: ports/net/nslint/Makefile,v 1.10 2000/04/09 18:12:37 cpiazza Exp $

COMMENT=	"performs consistency checks on BIND files"

DISTNAME=		nslint-2.0.2a2
CATEGORIES=     	net
NEED_VERSION=	1.402
MAINTAINER=		Wangden Kelsang <wngdn@src.uchicago.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.ee.lbl.gov/

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV=		LDFLAGS=-static
.endif

CONFIGURE_STYLE=	gnu
ALL_TARGET=		nslint
INSTALL_TARGET=		install install-man

.include <bsd.port.mk>
