# $OpenBSD: Makefile,v 1.19 2000/03/06 03:00:04 espie Exp $

DISTNAME=	tcsh-6.09
.if defined(STATIC) && ${STATIC:U} == YES
PKGNAME=	tcsh-6.09.00-static
.else
PKGNAME=	tcsh-6.09.00
.endif
CATEGORIES=	shells
NEED_VERSION=	1.218
MASTER_SITES=	ftp://ftp.astron.com/pub/tcsh/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	Yes

# invoke make with STATIC=yes to build a static binary
.if defined(STATIC) && ${STATIC:U} == YES
CONFIGURE_ENV+=	LDFLAGS=-static
.endif

ALL_TARGET=	all catalogs
WRKDIST=	${WRKDIR}/tcsh-6.09.00
FAKE=		Yes

do-install:
	@mkdir -p ${PREFIX}/share/nls/el_GR.ISO_8859-7
	${INSTALL_PROGRAM} ${WRKSRC}/tcsh ${PREFIX}/bin/tcsh
	${INSTALL_MAN} ${WRKSRC}/tcsh.man ${PREFIX}/man/man1/tcsh.1
	${INSTALL_DATA} ${WRKSRC}/tcsh.C.cat ${PREFIX}/share/nls/C/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.french.cat ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.german.cat ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.greek.cat ${PREFIX}/share/nls/el_GR.ISO_8859-7/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.italian.cat ${PREFIX}/share/nls/it_IT.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.spanish.cat ${PREFIX}/share/nls/es_ES.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.ja.cat ${PREFIX}/share/nls/ja_JP.EUC/tcsh.cat

.include <bsd.port.mk>
