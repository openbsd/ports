# $OpenBSD: Makefile,v 1.15 2001/06/08 13:36:39 shell Exp $

COMMENT=	"C library to parse CGI Forms"

DISTNAME=	cgiparse-0.9b
CATEGORIES=	www
NEED_VERSION=	1.402

MAINTAINER=	ports@openbsd.org

HOMEPAGE=	http://resnet.uoregon.edu/~gurney_j/jmpc/cgiparse.html

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://resnet.uoregon.edu/~gurney_j/jmpc/dist/

CONFIGURE_STYLE=	gnu

.if $(MACHINE_ARCH) == "alpha"
BROKEN=		"Alpha architecture not yet supported"
.elif ${MACHINE_ARCH} == "mips"
PLIST=${PKGDIR}/PLIST.mips
.endif

.include <bsd.port.mk>
