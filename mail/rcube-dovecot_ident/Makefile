COMMENT=	roundcube plugin: log end-user IP in Dovecot using IMAP ID

GH_ACCOUNT=	corbosman
GH_PROJECT=	dovecot_ident
GH_COMMIT=	96197ef75bcf6b65d04e9aaf9e23db8114075d14
DISTNAME=	dovecot_ident-2.2pl20230531
PKGNAME=	rcube-${DISTNAME}
REVISION=	1

CATEGORIES=	mail www

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	mail/roundcubemail>=1.5

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/dovecot_ident
	cp -Rp ${WRKDIST}/* ${INSTDIR}/dovecot_ident
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*${PATCHORIG} -or -name \*.src \) -delete

.include <bsd.port.mk>
