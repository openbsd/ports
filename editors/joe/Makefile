# $RuOBSD: Makefile,v 1.3 2002/04/10 05:14:52 form Exp $
# $OpenBSD: Makefile,v 1.28 2002/05/13 02:43:38 form Exp $

COMMENT=		"joe's own editor"

DISTNAME=		joe-2.9.8-pre1
PKGNAME=		joe-2.9.8pre1
EXTRACT_SUFX=		.tgz
CATEGORIES=		editors
NEED_VERSION=		1.528
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=joe-editor/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=		Oleg Safiullin <form@openbsd.org>, \
			Mike Pechkin <mpech@openbsd.org>

CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/joe ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/termidx ${PREFIX}/bin
	@cd ${PREFIX}/bin; \
		ln -sf joe jmacs; \
		ln -sf joe jpico; \
		ln -sf joe jstar; \
		ln -sf joe rjoe
	${INSTALL_MAN} ${WRKSRC}/joe.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/joe
	${INSTALL_DATA} ${WRKDIST}/INFO ${PREFIX}/share/doc/joe
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/joe
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/joe
.for f in jmacsrc joerc jpicorc jstarrc rjoerc
	${INSTALL_DATA} ${WRKDIST}/${f} \
		${PREFIX}/share/examples/joe
.endfor

.include <bsd.port.mk>
