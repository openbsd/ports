# $OpenBSD: Makefile,v 1.24 2003/01/04 00:05:46 brad Exp $

COMMENT=	"text editor"

DISTNAME=	jed-B0.99-14
PKGNAME=	jed-0.99.14
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_BACKUP}
#MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/v0.99/ \
#		ftp://ftp.ntua.gr/pub/pub/lang/slang/jed/v0.99 \
#		ftp://ftp.gigabell.net/pub/Jed/v0.99/ \
#		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/jed/v0.99/

HOMEPAGE=	http://space.mit.edu/~davis/jed/

LIB_DEPENDS=	slang.14::devel/libslang

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	JED_ROOT="${PREFIX}/lib/jed"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
ALL_TARGET=	all getmail
.else
USE_X11=	Yes
ALL_TARGET=	all getmail xjed
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
