# $OpenBSD: Makefile,v 1.18 2002/05/13 18:50:39 espie Exp $

COMMENT=	"GNU automated testing framework"

DISTNAME=	dejagnu-1.3
CATEGORIES=	devel
NEED_VERSION=	1.474
MASTER_SITES=	${MASTER_SITE_GNU:=dejagnu/}

HOMEPAGE=	http://www.gnu.org/software/dejagnu/

LIB_DEPENDS=	tk83.1.3::x11/tk/8.3
RUN_DEPENDS=	::lang/expect

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-tclinclude="${PREFIX}/include/tcl8.3/generic" \
		--with-tkinclude="${PREFIX}/include/tk8.3/generic"

ALL_TARGET=	all info
INSTALL_TARGET=	install install-info

post-extract:
	@rm -rf ${WRKSRC}/{expect,tcl}
	@cp -f ${FILESDIR}/{config.guess,config.sub} ${WRKSRC}

.include <bsd.port.mk>
