# $OpenBSD: Makefile,v 1.1.1.1 2010/09/20 07:15:30 sebastia Exp $
			
COMMENT=		utilities for jailing a user or process

DISTNAME=		jailkit-2.12
CATEGORIES=    		security sysutils

HOMEPAGE=		http://olivier.sessink.nl/jailkit/
MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

MASTER_SITES=		${HOMEPAGE}

# BSD - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python
WANTLIB += c pthread

NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		PYTHONINTERPRETER=${MODPY_BIN} \
			PROCMAILPATH=${LOCALBASE}/bin/procmail
CONFIGURE_ARGS=		--sysconfdir=${SYSCONFDIR}

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples

MAN_P=  jailkit.8 jk_check.8 jk_chrootlaunch.8 jk_chrootsh.8 jk_cp.8 \
	jk_init.8 jk_jailuser.8 jk_lsh.8 jk_socketd.8 jk_uchroot.8 \
	jk_update.8

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ini/jk_init.ini
	for i in ${MAN_P}; do \
		${SUBST_CMD} ${WRKSRC}/man/$${i}; done

post-install:
	# recreate the .pyc file, otherwise it would change
	# after installation
	rm ${PREFIX}/share/jailkit/jk_lib.pyc
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/jailkit

.include <bsd.port.mk>
