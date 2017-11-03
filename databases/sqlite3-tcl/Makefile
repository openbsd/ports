# $OpenBSD: Makefile,v 1.3 2017/11/03 15:55:06 stu Exp $

COMMENT=	Tcl bindings for sqlite3 (embedded SQL implementation)

DISTNAME=	sqlite-autoconf-3200100
PKGNAME=	sqlite3-tcl-3.20.1

WRKSRC=		${WRKDIST}/tea

CATEGORIES=	databases

HOMEPAGE=	http://www.sqlite.org/

MAINTAINER=	Stuart Cassoff <stwo@users.sourceforge.net>

# PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

MASTER_SITES=	${HOMEPAGE}2017/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

MODULES+=	lang/tcl
BUILD_DEPENDS=  ${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}

FAKE_FLAGS=     PKG_DIR=sqlite3

CONFIGURE_ARGS=	--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR}

# for mozilla
CFLAGS+=	-DSQLITE_ENABLE_UNLOCK_NOTIFY

NO_TEST=	Yes

.include <bsd.port.mk>
