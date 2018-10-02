# $OpenBSD: Makefile,v 1.2 2018/10/02 08:57:32 solene Exp $

COMMENT =		command line tool to filter HTML with CSS selectors

GH_ACCOUNT =		ericchiang
GH_PROJECT =		pup
GH_TAGNAME =		v0.4.0
REVISION =		0

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/go

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pup/
	${INSTALL_PROGRAM}  ${WRKDIR}/go/bin/pup ${PREFIX}/bin/pup
	${INSTALL_DATA}     ${WRKSRC}/README.md  ${PREFIX}/share/doc/pup/README.md
	${INSTALL_DATA}     ${WRKSRC}/LICENSE    ${PREFIX}/share/doc/pup/LICENSE

.include <bsd.port.mk>
