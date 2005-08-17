# $OpenBSD: Makefile,v 1.23 2005/08/17 16:10:04 espie Exp $

COMMENT=	"C library to parse CGI Forms"

DISTNAME=	cgiparse-0.9b
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://resnet.uoregon.edu/~gurney_j/jmpc/cgiparse.html

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://resnet.uoregon.edu/~gurney_j/jmpc/dist/

CONFIGURE_STYLE=	gnu

.if $(MACHINE_ARCH) == "alpha"
BROKEN=		"Alpha architecture not yet supported"
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
ALL_TARGET=	allstatic
INSTALL_TARGET=	installstatic
.endif
