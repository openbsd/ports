# $OpenBSD: Makefile,v 1.7 2004/08/10 08:46:50 xsa Exp $

COMMENT=		"GNU text utilities"

DISTNAME=		textutils-2.0
CATEGORIES=		textproc

MAINTAINER=		David Lebel <lebel@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
