# $OpenBSD: Makefile,v 1.5 2012/08/29 13:31:20 sthen Exp $

COMMENT=	command-line interface to Icinga

DISTNAME=	icli-0.43

CATEGORIES=	net

HOMEPAGE=	http://finalrewind.org/projects/icli/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# custom, see COPYING.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

FLAVORS=		nagios
FLAVOR?=
PATCH_LIST=		patch-*
.if ${FLAVOR:Mnagios}
PATCH_LIST+=		nagios-*
RUN_DEPENDS=		net/nagios/nagios
.else
PATCH_LIST+=		icinga-*
RUN_DEPENDS=		net/icinga/core
.endif

RUN_DEPENDS+=		devel/p5-List-MoreUtils \
			devel/p5-Term-Size \
			devel/p5-Time-TimeDate

CONFIGURE_STYLE=	modbuild

# requires devel/p5-Test-Pod and (unported) Test::Compile, Test::Command
NO_REGRESS=		Yes

PKG_ARCH=		*

.include <bsd.port.mk>
