# $OpenBSD: Makefile,v 1.39 2014/07/16 12:14:17 ajacoutot Exp $

COMMENT =		SMTP plugin for MUAs

DISTNAME =		msmtp-1.4.32
CATEGORIES =		mail
REVISION =		0

HOMEPAGE =		http://msmtp.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c crypto ssl idn

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=msmtp/}
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		devel/libidn

MODULES =		devel/gettext

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libgsasl=no \
			--with-libidn=yes \
			--with-ssl=openssl \
			--without-gnome-keyring

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/msmtp
	${INSTALL_DATA_DIR} ${PREFIX}/share/msmtp/msmtpqueue
	${INSTALL_DATA} ${WRKSRC}/doc/*.example ${PREFIX}/share/examples/msmtp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/msmtp
	${INSTALL_DATA} ${WRKSRC}/doc/Mutt+msmtp.txt ${PREFIX}/share/doc/msmtp
	${INSTALL_DATA} ${WRKSRC}/scripts/msmtpqueue/{README,ChangeLog} \
			${PREFIX}/share/msmtp/msmtpqueue
	${INSTALL_DATA} ${WRKSRC}/scripts/msmtpq/README.msmtpq \
			${PREFIX}/share/msmtp
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/set_sendmail/set_sendmail.sh \
		${PREFIX}/share/examples/msmtp
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/msmtpqueue/*.sh \
		${PREFIX}/share/examples/msmtp
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/msmtpq/{msmtpq,msmtp-queue} \
		${PREFIX}/share/examples/msmtp

.include <bsd.port.mk>
