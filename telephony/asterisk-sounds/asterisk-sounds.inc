# sync with asterisk-sounds/Makefile and asterisk-sounds/*sounds/Makefile
ASND_CODECS ?=	gsm alaw ulaw g722 g729 wav # sln16 siren7 siren14

CATEGORIES +=	telephony
DISTNAME =	${ASND_NAME}-${ASND_LANG:C/(.+)/\1-/}${ASND_CODEC}-${ASND_VER}
FULLPKGNAME ?=  ${DISTNAME}
SITES ?=	https://downloads.asterisk.org/pub/telephony/sounds/releases/
HOMEPAGE =	https://www.asterisk.org/
COMMENT =	${ASND_DESC}

EXTRACT_ONLY =
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

_LN-en_AU =	Australian English
_LN-en =	English
_LN-es =	Spanish
_LN-fr =	French
_LN-it =	Italian
_LN-ru =	Russian

ASND_LANGNAME = ${_LN-${ASND_LANG}}
ASND_CODEC =	${FLAVOR}

FLAVORS ?=	${ASND_CODECS}
FLAVOR ?=	gsm

.if defined(ASND_LANG)
.  for c in ${ASND_CODECS}
SUPDISTFILES += ${ASND_NAME}-${ASND_LANG}-$c-${ASND_VER}${EXTRACT_SUFX}
.  endfor
.else
.  for c in ${ASND_CODECS}
SUPDISTFILES += ${ASND_NAME}-$c-${ASND_VER}${EXTRACT_SUFX}
.  endfor
.endif

_T = ${ASND_NAME:S/asterisk-//}

ASND_INST ?=	share/asterisk/sounds/${ASND_LANG}
SUBST_VARS +=	ASND_INST L ASND_LANGNAME ASND_CODEC ASND_VER

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${ASND_INST}
	${GZIP_CMD} -dc ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} | \
	    ${TAR} xf - -C ${PREFIX}/${ASND_INST}
