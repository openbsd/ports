# $OpenBSD: Makefile,v 1.33 2013/03/11 11:44:41 espie Exp $

BROKEN-alpha=	Alpha architecture not yet supported

COMMENT=	C library to parse CGI Forms

DISTNAME=	cgiparse-0.9b
REVISION=	0
CATEGORIES=	www
SHARED_LIBS=	cgiparse	1.0

HOMEPAGE=	http://resnet.uoregon.edu/~gurney_j/jmpc/cgiparse.html

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://resnet.uoregon.edu/~gurney_j/jmpc/dist/

CONFIGURE_STYLE=	gnu

NO_TEST=	Yes

MAKE_ENV=	LIBcgiparse_VERSION=${LIBcgiparse_VERSION}
FAKE_FLAGS=	MANDIR=${WRKINST}${PREFIX}/man
USE_GROFF =	Yes

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
ALL_TARGET=	allstatic
INSTALL_TARGET=	installstatic
.endif
