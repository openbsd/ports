# $OpenBSD: Makefile,v 1.18 2002/10/29 01:30:41 naddy Exp $

COMMENT=	"C library to parse CGI Forms"

DISTNAME=	cgiparse-0.9b
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
.elif ${MACHINE_ARCH} == "mips"
PLIST=${PKGDIR}/PLIST.mips
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
