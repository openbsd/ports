# $OpenBSD: Makefile,v 1.10 2007/09/15 20:59:42 merdely Exp $

COMMENT=		GNU text utilities

DISTNAME=		textutils-2.0
CATEGORIES=		textproc

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=		${MASTER_SITE_GNU:=textutils/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix="g"

# since we got a conflict with graphviz regarding the name gpr, rename that
# binary to ggpr

post-install:
	@[ -x ${PREFIX}/bin/gpr ] && mv ${PREFIX}/bin/gpr ${PREFIX}/bin/ggpr
	@[ -f ${PREFIX}/man/man1/gpr.1 ] && mv ${PREFIX}/man/man1/gpr.1 \
                                               ${PREFIX}/man/man1/ggpr.1

.include <bsd.port.mk>
