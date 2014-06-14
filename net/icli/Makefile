# $OpenBSD: Makefile,v 1.9 2014/06/14 14:04:07 sthen Exp $

COMMENT=	command-line interface to Icinga

V=		0.48
DISTNAME=	App-Icli-$V
PKGNAME=	icli-$V

CATEGORIES=	net

HOMEPAGE=	http://finalrewind.org/projects/App-Icli/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# custom, see COPYING.
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

FLAVORS=		nagios
FLAVOR?=
.if ${FLAVOR:Mnagios}
RUN_DEPENDS=		net/nagios/nagios
DATDIR=			${VARBASE}/nagios
.else
RUN_DEPENDS=		net/icinga/core
DATDIR=			${VARBASE}/icinga
.endif

RUN_DEPENDS+=		devel/p5-DateTime-Format-Strptime \
			devel/p5-List-MoreUtils \
			devel/p5-Term-Size

CONFIGURE_STYLE=	modbuild

CONFIGURE_ARGS=		--icli-object-file=${DATDIR}/objects.cache \
			--icli-status-file=${DATDIR}/status.dat \
			--icli-command-file=${DATDIR}/icinga.cmd

# some deps not ported
NO_TEST=		Yes
#TEST_DEPENDS+=		devel/p5-Test-Command \		(unported)
#			devel/p5-Test-Compile \		(unported)
#			devel/p5-Test-More \
#			devel/p5-Test-Pod

PKG_ARCH=		*

.include <bsd.port.mk>
