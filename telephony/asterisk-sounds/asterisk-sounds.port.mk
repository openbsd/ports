# $OpenBSD: asterisk-sounds.port.mk,v 1.1 2012/09/25 21:58:46 sthen Exp $

MODAS_CODECS ?=	gsm alaw ulaw g722 sln16 wav # g729 siren7 siren14

CATEGORIES +=	telephony telephony/asterisk-sounds
_N =		${MODAS_NAME}-${MODAS_LANG}-${MODAS_CODEC}-${MODAS_VER}
DISTNAME =	${_N:S/--/-/g:S/-$//}
FULLPKGNAME ?=  ${DISTNAME}
MASTER_SITES ?= http://downloads.asterisk.org/pub/telephony/sounds/releases/
HOMEPAGE =	http://www.asterisk.org/
COMMENT =	${MODAS_DESC}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

_LN-en_AU =	Australian English
_LN-en =	English
_LN-es =	Spanish
_LN-fr =	French
_LN-ru =	Russian

MODAS_LANGNAME = ${_LN-${MODAS_LANG}}
MODAS_CODEC =	${FLAVOR}

FLAVORS ?=	${MODAS_CODECS}
FLAVOR ?=	gsm

.if defined(MODAS_LANGS)
.  for c in ${MODAS_CODECS}
.    for l in ${MODAS_LANGS}
SUPDISTFILES += ${MODAS_NAME}-$l-$c-${MODAS_VER}${EXTRACT_SUFX}
.    endfor
.  endfor
.else
.  for c in ${MODAS_CODECS}
SUPDISTFILES += ${MODAS_NAME}-$c-${MODAS_VER}${EXTRACT_SUFX}
.  endfor
.endif

_T = ${MODAS_NAME:S/asterisk-//}

MODAS_INST ?=	share/asterisk/sounds/${MODAS_LANG}
SUBST_VARS +=	MODAS_INST L MODAS_LANGNAME MODAS_CODEC MODAS_VER

do-extract:
	mkdir ${WRKDIST} && cd ${WRKDIST} && \
	${GZIP_CMD} -dc ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} | ${TAR} xf -

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODAS_INST}
	cd ${WRKDIST}; pax -rw ./ ${PREFIX}/${MODAS_INST}
