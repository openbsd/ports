# $OpenBSD: Makefile,v 1.16 2001/06/20 01:43:37 pvalchev Exp $

COMMENT=	"C library to parse CGI Forms"

DISTNAME=	cgiparse-0.9b
CATEGORIES=	www
NEED_VERSION=	1.402

MAINTAINER=	ports@openbsd.org

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
.elif ${MACHINE_ARCH} == "mips"
PLIST=${PKGDIR}/PLIST.mips
.endif

.include <bsd.port.mk>
