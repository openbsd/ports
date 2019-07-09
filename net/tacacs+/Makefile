# $OpenBSD: Makefile,v 1.19 2019/07/09 20:22:42 gsoares Exp $

COMMENT =	TACACS+ AAA service, often used with network equipment

V =		4.0.4.28
DISTNAME =	tacacs-F${V}
PKGNAME =	tacacs+-${V}
EPOCH =		0

SHARED_LIBS +=  tacacs                    1.0

CATEGORIES =	net security
HOMEPAGE =	https://www.shrubbery.net/tac_plus/
MAINTAINER =	Jan Vlach <janus@volny.cz>

# BSD style, but without fee
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	ftp://ftp.shrubbery.net/pub/tac_plus/

MODULES =	lang/python
MODPY_ADJ_FILES = do_auth.py

BUILD_DEPENDS =	devel/bison

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libwrap=no \
			--with-acctfile=/var/log/tac_plus/tac.acct \
			--with-logfile=var/log/tac_plus/tac.log \
			--with-whologfile=/var/log/tac_plus/tacwho.log

# don't allow picking up pam
CONFIGURE_ENV =	ac_cv_lib_pam_pam_start=false \
		YACC=bison

post-install:
	${INSTALL_DATA} ${FILESDIR}/tac_plus.conf.sample ${PREFIX}/share/tacacs
	rm ${PREFIX}/bin/tac_pwd ${PREFIX}/man/man8/tac_pwd.8 # only works with des/md5 crypt

.include <bsd.port.mk>
