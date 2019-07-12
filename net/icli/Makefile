# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:28 sthen Exp $

COMMENT=	command-line interface to Icinga

V=		0.48
DISTNAME=	App-Icli-$V
PKGNAME=	icli-$V
REVISION=	1

CATEGORIES=	net

HOMEPAGE=	https://finalrewind.org/projects/App-Icli/

# custom, see COPYING.
PERMIT_PACKAGE=	Yes

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
