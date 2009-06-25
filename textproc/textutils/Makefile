# $OpenBSD: Makefile,v 1.11 2009/06/25 00:23:39 jolan Exp $

COMMENT=		GNU text utilities

DISTNAME=		textutils-2.0
PKGNAME=		textutils-2.0p0
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

# gpr -> ggpr to fix a conflict with graphviz
# god -> ggod to fix a conflict with god

post-install:
	@[ -x ${PREFIX}/bin/god ] && mv ${PREFIX}/bin/god ${PREFIX}/bin/ggod
	@[ -x ${PREFIX}/bin/gpr ] && mv ${PREFIX}/bin/gpr ${PREFIX}/bin/ggpr
	@[ -f ${PREFIX}/man/man1/gpr.1 ] && mv ${PREFIX}/man/man1/gpr.1 \
		${PREFIX}/man/man1/ggpr.1
	@[ -f ${PREFIX}/man/man1/god.1 ] && mv ${PREFIX}/man/man1/god.1 \
		${PREFIX}/man/man1/ggod.1

.include <bsd.port.mk>
