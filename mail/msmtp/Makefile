COMMENT =		SMTP plugin for MUAs

DISTNAME =		msmtp-1.8.26
CATEGORIES =		mail

HOMEPAGE =		https://marlam.de/msmtp/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB = c iconv idn2 intl tls

SITES =			https://marlam.de/msmtp/releases/
EXTRACT_SUFX =		.tar.xz

LIB_DEPENDS =		devel/libidn2 \
			devel/gettext,-runtime

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libgsasl=no \
			--with-libidn=yes \
			--with-tls=libtls \
			--without-libsecret
CONFIGURE_ENV +=	libtls_LIBS="-L/usr/lib -l tls" \
			libtls_CFLAGS="-I/usr/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/msmtp
	${INSTALL_DATA_DIR} ${PREFIX}/share/msmtp/msmtpqueue
	${INSTALL_DATA} ${WRKSRC}/doc/*.example ${PREFIX}/share/examples/msmtp
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
